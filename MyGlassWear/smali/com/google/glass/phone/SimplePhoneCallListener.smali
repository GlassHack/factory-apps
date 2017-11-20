.class public Lcom/google/glass/phone/SimplePhoneCallListener;
.super Lcom/google/glass/phone/IPhoneCallListener$Stub;
.source "SimplePhoneCallListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallConnected(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 21
    return-void
.end method

.method public onCallConnecting(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 18
    return-void
.end method

.method public onCallDisconnected(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 27
    return-void
.end method

.method public onCallDisconnecting(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 24
    return-void
.end method

.method public onCallError(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 30
    return-void
.end method

.method public final onCallerIdentified(Lcom/google/glass/phone/PhoneCall;[B)V
    .locals 1
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;
    .param p2, "caller"    # [B

    .prologue
    .line 37
    invoke-static {p2}, Lcom/google/glass/entity/EntityUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 38
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/SimplePhoneCallListener;->onCallerIdentified(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 39
    return-void
.end method

.method public onCallerIdentified(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0
    .param p1, "caller"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 41
    return-void
.end method

.method public onIncomingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 12
    return-void
.end method

.method public onOutgoingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 15
    return-void
.end method

.method public onPhoneNumberSet(Lcom/google/glass/phone/PhoneCall;Ljava/lang/String;)V
    .locals 0
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method
