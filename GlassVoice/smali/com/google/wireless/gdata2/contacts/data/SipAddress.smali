.class public Lcom/google/wireless/gdata2/contacts/data/SipAddress;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "SipAddress.java"


# static fields
.field public static final TYPE_HOME:B = 0x1t

.field public static final TYPE_OTHER:B = 0x3t

.field public static final TYPE_WORK:B = 0x2t


# instance fields
.field private address:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # B
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p2, p3, p4}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>(BLjava/lang/String;Z)V

    .line 21
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->address:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->address:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 33
    const-string v0, "SipAddress"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 35
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " address:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_0
    return-void
.end method
