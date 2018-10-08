// pages/top/topDetail/topDetail.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    imgList: [],
    color: '#12D3CD',
    color1:'',
    show:'block',
    show1:'none'
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    wx.request({
      url: "http://127.0.0.1:3000/imgList/zhuImg",
      success: (res) => {
        this.setData({
          imgList:res.data
        });
      },
      fail:function(res){
        console.log(res);
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

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  },
  showZhuye: function(){
    this.setData({
      color:'#12D3CD',
      color1:'',
      show:'block',
      show1:'none'
    })
  },
  showJishu: function(){
    this.setData({
      color1: '#12D3CD',
      color: '',
      show1: 'block',
      show: 'none'
    })
  }
})