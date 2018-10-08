//获取当前小程序对象
const app = getApp();
// pages/zhi/zhi.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    zhiList:[],
    pno:0,
    pageSize:6,
    hasMore: true,
    HH:0,
    showf:"block"
  },
  loadMore(){
    if(!this.data.hasMore)return;
    wx.request({
      url: "http://127.0.0.1:3000/zwList/list",
      method: "GET",
      data: {
        pno: ++this.data.pno,
        pageSize: this.data.pageSize
      },
      success: (res) => {
        var newList=this.data.zhiList.concat(res.data.msg);
        var pageCount=res.data.pageCount;
        var flag=this.data.pno<pageCount;
        this.setData({
          zhiList:newList,
          hasMore:flag
        });
      },
      fail: function (res) {
        console.log(res);
      }
    });
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.loadMore();
    wx.getSystemInfo({
      success:function(res){
        app.globalData.windowHeight=res.windowHeight;
      }
    })
    this.setData({
      HH: app.globalData.windowHeight
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
      pno:0,
      hasMore:true,
      zhiList:[]    
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
  dezhu: function () {
    this.setData({
      showf: "block"
    });
  },
  close: function () {
    this.setData({
      showf: "none"
    })
  },
  LR: function () {
    wx.navigateTo({
      url: "../mine/loginReg/loginReg"
    })
  },
  goZhidetail:function(){
    wx.navigateTo({
      url:"./zhiDetail/zhiDetail"
    })
  }
})