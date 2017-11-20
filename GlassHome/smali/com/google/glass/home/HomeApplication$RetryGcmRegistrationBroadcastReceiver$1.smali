.class Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver$1;->this$1:Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver$1;->this$1:Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$800(Lcom/google/glass/home/HomeApplication;)V

    .line 651
    return-void
.end method
