.class Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$1;
.super Ljava/lang/Object;
.source "PhoneCallLiveCardMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->showMenuWhenReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$1;->this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$1;->this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.EXTRA_FROM_LIVECARD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$1;->this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->openOptionsMenu()V

    .line 101
    :cond_0
    return-void
.end method
