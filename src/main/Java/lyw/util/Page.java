package lyw.util;

public class Page {
    private int start;//当前页起始值
    private int count = 5;//每页数量
    private int total;//数据总数
    private String param;

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getParam() {
        return param;
    }

    public void setParam(String param) {
        this.param = param;
    }

    public boolean isHasPre(){
        return start>0;
    }

    public int getFinalPage(){
        if(total%count==0){
            return total-count;
        }else{
            return total/count*count;
        }
    }

    public boolean isHasNext(){
        return start!=getFinalPage();
    }

    public int getTotalPage(){
        return total%count==0?total/count:total/count+1;
    }
}
