.class Lcom/google/glass/home/timeline/active/HomeItemView$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HomeItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/HomeItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/HomeItemView;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/home/timeline/active/HomeItemView;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/active/HomeItemView;
    .param p2, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$1;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView$1;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$000(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/HomeItemView$1;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v2}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$000(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Received action: [action=%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const-string v2, "com.google.glass.action.SET_WALLPAPER_REQUEST_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const-string v2, "set_wallpaper_id_key"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, "requestId":I
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/HomeItemView$1;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v2}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$100(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/wallpaper/WallpaperHelper;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;

    iget-object v4, p0, Lcom/google/glass/home/timeline/active/HomeItemView$1;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-direct {v3, v4, v1}, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;-><init>(Lcom/google/glass/home/timeline/active/HomeItemView;I)V

    invoke-virtual {v2, v3}, Lcom/google/glass/wallpaper/WallpaperHelper;->loadWallpaper(Lcom/google/glass/wallpaper/WallpaperCallback;)V

    .line 66
    .end local v1    # "requestId":I
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v2, "com.google.glass.action.GET_WALLPAPER_INFO_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/HomeItemView$1;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v2}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$200(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->GLASS_SENDING_WALLPAPER_INFO:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 63
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/HomeItemView$1;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v2}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$100(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/wallpaper/WallpaperHelper;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/timeline/active/HomeItemView$SendWallpaperInfoCallback;

    iget-object v4, p0, Lcom/google/glass/home/timeline/active/HomeItemView$1;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    const-string v5, "sha1_hash_code_key"

    .line 64
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/glass/home/timeline/active/HomeItemView$SendWallpaperInfoCallback;-><init>(Lcom/google/glass/home/timeline/active/HomeItemView;[B)V

    .line 63
    invoke-virtual {v2, v3}, Lcom/google/glass/wallpaper/WallpaperHelper;->getWallpaperInfo(Lcom/google/glass/wallpaper/WallpaperInfoCallback;)V

    goto :goto_0
.end method
