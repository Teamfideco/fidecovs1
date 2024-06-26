package fideco.member.dto;

public class MemberDTO {

    private String member_id;
    private String member_name;
    private String member_pw;
    private String member_address;
    private String member_phone;
    private String member_email;
    private String member_auth;

    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getMember_pw() {
        return member_pw;
    }

    public void setMember_pw(String member_pw) {
        this.member_pw = member_pw;
    }

    public String getMember_address() {
        return member_address;
    }

    public void setMember_address(String member_address) {
        this.member_address = member_address;
    }

    public String getMember_phone() {
        return member_phone;
    }

    public void setMember_phone(String member_phone) {
        this.member_phone = member_phone;
    }

    public String getMember_email() {
        return member_email;
    }

    public void setMember_email(String member_email) {
        this.member_email = member_email;
    }

    public String getMember_auth() {
        return member_auth;
    }

    public void setMember_auth(String member_auth) {
        this.member_auth = member_auth;
    }

    @Override
    public String toString() {
        return "MemberDTO [member_id=" + member_id + ", member_name=" + member_name + ", member_pw=" + member_pw
                + ", member_address=" + member_address + ", member_phone=" + member_phone + ", member_email="
                + member_email + ", member_auth=" + member_auth + "]";
    }

}
