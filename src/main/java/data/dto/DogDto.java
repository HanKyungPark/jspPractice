package data.dto;

public class DogDto {
    private int IDX;
    private String dogName;
    private String dogImg;
    private String dogChar;

    public DogDto(String dogName, String dogImg, String dogChar) {
        this.dogName = dogName;
        this.dogImg = dogImg;
        this.dogChar = dogChar;
    }

    public DogDto(){

    }

    public int getIDX() {
        return IDX;
    }

    public void setIDX(int IDX) {
        this.IDX = IDX;
    }

    public String getDogName() {
        return dogName;
    }

    public void setDogName(String dogName) {
        this.dogName = dogName;
    }

    public String getDogImg() {
        return dogImg;
    }

    public void setDogImg(String dogImg) {
        this.dogImg = dogImg;
    }

    public String getDogChar() {
        return dogChar;
    }

    public void setDogChar(String dogChar) {
        this.dogChar = dogChar;
    }
}
