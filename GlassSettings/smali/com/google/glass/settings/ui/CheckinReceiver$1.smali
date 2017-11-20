.class Lcom/google/glass/settings/ui/CheckinReceiver$1;
.super Ljava/lang/Object;
.source "CheckinReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/CheckinReceiver;->onCheckin(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/CheckinReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/CheckinReceiver;Landroid/content/Context;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/CheckinReceiver;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/glass/settings/ui/CheckinReceiver$1;->this$0:Lcom/google/glass/settings/ui/CheckinReceiver;

    iput-object p2, p0, Lcom/google/glass/settings/ui/CheckinReceiver$1;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/google/glass/settings/ui/CheckinReceiver$1;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/google/glass/util/Checkin;

    iget-object v1, p0, Lcom/google/glass/settings/ui/CheckinReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/util/Checkin;-><init>(Landroid/content/Context;)V

    iget-wide v1, p0, Lcom/google/glass/settings/ui/CheckinReceiver$1;->val$timestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/Checkin;->storeLastCheckinTime(J)V

    .line 46
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/CheckinReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->ANDROID_CHECK_IN:Lcom/google/glass/userevent/UserEventAction;

    iget-wide v2, p0, Lcom/google/glass/settings/ui/CheckinReceiver$1;->val$timestamp:J

    .line 47
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 48
    return-void
.end method
