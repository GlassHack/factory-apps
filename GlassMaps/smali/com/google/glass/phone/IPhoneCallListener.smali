.class public interface abstract Lcom/google/glass/phone/IPhoneCallListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onCallConnected(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onCallConnecting(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onCallDisconnected(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onCallDisconnecting(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onCallError(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onCallerIdentified(Lcom/google/glass/phone/PhoneCall;[B)V
.end method

.method public abstract onIncomingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onOutgoingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onPhoneNumberSet(Lcom/google/glass/phone/PhoneCall;Ljava/lang/String;)V
.end method
