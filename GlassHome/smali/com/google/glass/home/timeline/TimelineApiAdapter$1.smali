.class Lcom/google/glass/home/timeline/TimelineApiAdapter$1;
.super Ljava/lang/Object;
.source "TimelineApiAdapter.java"

# interfaces
.implements Lcom/google/android/glass/voice/OkayGlassClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/TimelineApiAdapter;->createOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;Landroid/view/ViewGroup;)Lcom/google/android/glass/voice/OkayGlassClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/TimelineApiAdapter;

.field final synthetic val$card:Lcom/google/android/glass/timeline/HostedCard;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineApiAdapter;Lcom/google/android/glass/timeline/HostedCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/TimelineApiAdapter;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$1;->this$0:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$1;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOkayGlass()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$1;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$1;->this$0:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    invoke-static {v1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->access$000(Lcom/google/glass/home/timeline/TimelineApiAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/HostedCard;->activateFromVoice(Landroid/content/Context;)V

    .line 160
    return-void
.end method
