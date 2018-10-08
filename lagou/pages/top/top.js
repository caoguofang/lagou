// pages/top/top.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    pno:0,
    imgList:[],
    topList:[],
    hasMore:true,
    pageSize:8
  },
  loadMore(){
    if(!this.data.hasMore)return;
    wx.request({
      method: "GET",
      url: "http://127.0.0.1:3000/top/list",
      data:{
        pno:++this.data.pno,
        pageSize:this.data.pageSize
      },
      success: (res) => {
        var newList = this.data.topList.concat(res.data.msg);
        var pageCount = res.data.pageCount;
        var flag = this.data.pno < pageCount;
        this.setData({
          topList: newList,
          hasMore: flag
        });
      },
      fail: (res) => {
        console.log(res);
      }
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.loadMore();
    wx.request({
      url:"http://127.0.0.1:3000/top/swipe_img",
      success:(res)=>{
        this.setData({
          imgList:res.data
        });
      }
    });
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    this.setData({
      topList:[],
      hasMore:true,
      pno:0
    });
    this.loadMore();
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    this.loadMore();
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  },
  goTopDetail:function(){
    wx.navigateTo({
      url: './topDetail/topDetail',
    })
  }
})