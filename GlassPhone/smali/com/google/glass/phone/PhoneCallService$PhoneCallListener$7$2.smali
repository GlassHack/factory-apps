.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7$2;
.super Ljava/lang/Object;
.source "PhoneCallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7$2;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7$2;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallService;->hidePhoneCall()V

    .line 395
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7$2;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService;->timelineHelper:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7$2;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0, v1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->insertCallAsync(Lcom/google/glass/phone/PhoneCall;)Ljava/util/concurrent/CountDownLatch;

    .line 396
    return-void
.end method
