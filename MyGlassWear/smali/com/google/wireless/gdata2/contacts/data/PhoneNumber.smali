.class public Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "PhoneNumber.java"


# static fields
.field public static final TYPE_ASSISTANT:B = 0x7t

.field public static final TYPE_CALLBACK:B = 0x8t

.field public static final TYPE_CAR:B = 0x9t

.field public static final TYPE_COMPANY_MAIN:B = 0xat

.field public static final TYPE_HOME:B = 0x2t

.field public static final TYPE_HOME_FAX:B = 0x5t

.field public static final TYPE_ISDN:B = 0xbt

.field public static final TYPE_MAIN:B = 0xct

.field public static final TYPE_MOBILE:B = 0x1t

.field public static final TYPE_OTHER:B = 0x13t

.field public static final TYPE_OTHER_FAX:B = 0xdt

.field public static final TYPE_PAGER:B = 0x6t

.field public static final TYPE_RADIO:B = 0xet

.field public static final TYPE_TELEX:B = 0xft

.field public static final TYPE_TTY_TDD:B = 0x10t

.field public static final TYPE_WORK:B = 0x3t

.field public static final TYPE_WORK_FAX:B = 0x4t

.field public static final TYPE_WORK_MOBILE:B = 0x11t

.field public static final TYPE_WORK_PAGER:B = 0x12t


# instance fields
.field private linksTo:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Z)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "linksTo"    # Ljava/lang/String;
    .param p3, "type"    # B
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "isPrimary"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p3, p4, p5}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>(BLjava/lang/String;Z)V

    .line 40
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->linksTo:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getLinksTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->linksTo:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setLinksTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "linksTo"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->linksTo:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 62
    const-string v0, "PhoneNumber"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 64
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " phoneNumber:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->linksTo:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " linksTo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->linksTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    :cond_1
    return-void
.end method
