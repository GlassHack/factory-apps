.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9$1;
.super Ljava/lang/Object;
.source "PhoneCallService.java"

# interfaces
.implements Lcom/google/glass/phone/PhoneCallService$PhoneCallListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9$1;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doOperation(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    check-cast p1, Lcom/google/glass/phone/IPhoneCallListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9$1;->doOperation(Lcom/google/glass/phone/IPhoneCallListener;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/phone/IPhoneCallListener;)V
    .locals 2
    .param p1, "callback"    # Lcom/google/glass/phone/IPhoneCallListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9$1;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;->val$call:Lcom/google/glass/phone/PhoneCall;

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9$1;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;->val$caller:[B

    invoke-interface {p1, v0, v1}, Lcom/google/glass/phone/IPhoneCallListener;->onCallerIdentified(Lcom/google/glass/phone/PhoneCall;[B)V

    .line 443
    return-void
.end method
