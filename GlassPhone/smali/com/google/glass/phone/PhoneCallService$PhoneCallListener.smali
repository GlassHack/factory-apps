.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;
.super Lcom/google/glass/phone/IPhoneCallListener$Stub;
.source "PhoneCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/PhoneCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallService;


# direct methods
.method private constructor <init>(Lcom/google/glass/phone/PhoneCallService;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-direct {p0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/phone/PhoneCallService;Lcom/google/glass/phone/PhoneCallService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/phone/PhoneCallService;
    .param p2, "x1"    # Lcom/google/glass/phone/PhoneCallService$1;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;-><init>(Lcom/google/glass/phone/PhoneCallService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    invoke-static {}, Lcom/google/glass/phone/PhoneCallService;->access$700()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/listener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 454
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-static {}, Lcom/google/glass/phone/PhoneCallService;->access$600()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCallConnected(Lcom/google/glass/phone/PhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onCallConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;)V

    invoke-direct {p0, v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->runOnHandler(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public onCallConnecting(Lcom/google/glass/phone/PhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onCallConnecting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;)V

    invoke-direct {p0, v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->runOnHandler(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method public onCallDisconnected(Lcom/google/glass/phone/PhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onCallDisconnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;)V

    invoke-direct {p0, v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->runOnHandler(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public onCallDisconnecting(Lcom/google/glass/phone/PhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onCallDisconnecting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$5;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$5;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;)V

    invoke-direct {p0, v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->runOnHandler(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public onCallError(Lcom/google/glass/phone/PhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onCallError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;)V

    invoke-direct {p0, v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->runOnHandler(Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method

.method public onCallerIdentified(Lcom/google/glass/phone/PhoneCall;[B)V
    .locals 3
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;
    .param p2, "caller"    # [B

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCallerIdentified"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$9;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;[B)V

    invoke-direct {p0, v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->runOnHandler(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public onIncomingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onIncomingCallInitiated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;)V

    invoke-direct {p0, v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->runOnHandler(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method public onOutgoingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onOutgoingCallInitiated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;)V

    invoke-direct {p0, v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->runOnHandler(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public onPhoneNumberSet(Lcom/google/glass/phone/PhoneCall;Ljava/lang/String;)V
    .locals 3
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPhoneNumberSet"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->runOnHandler(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method
