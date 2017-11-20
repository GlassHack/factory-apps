.class Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;
.super Ljava/lang/Object;
.source "HomeItemView.java"

# interfaces
.implements Lcom/google/glass/wallpaper/WallpaperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/HomeItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateWallpaperCallback"
.end annotation


# instance fields
.field private envelope:Lcom/google/glass/companion/Proto$Envelope;

.field private setWallpaperResponse:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

.field final synthetic this$0:Lcom/google/glass/home/timeline/active/HomeItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/HomeItemView;I)V
    .locals 1
    .param p2, "requestId"    # I

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->setWallpaperResponse:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 187
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->envelope:Lcom/google/glass/companion/Proto$Envelope;

    .line 190
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->setWallpaperResponse:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-virtual {v0, p2}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->setId(I)Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 191
    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->setWallpaperResponse:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->setUpdate(I)Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 222
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->envelope:Lcom/google/glass/companion/Proto$Envelope;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->setWallpaperResponse:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;->setSetWallpaperResponseG2C(Lcom/google/glass/companion/Proto$SetWallpaperResponse;)Lcom/google/glass/companion/Proto$Envelope;

    .line 223
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$500(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->envelope:Lcom/google/glass/companion/Proto$Envelope;

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 224
    return-void
.end method

.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 202
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v1}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$400(Lcom/google/glass/home/timeline/active/HomeItemView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    .line 203
    invoke-virtual {v2}, Lcom/google/glass/home/timeline/active/HomeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$integer;->activity_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 204
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v1}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$400(Lcom/google/glass/home/timeline/active/HomeItemView;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v1}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$400(Lcom/google/glass/home/timeline/active/HomeItemView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    const-string v2, "ps"

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    .line 207
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$400(Lcom/google/glass/home/timeline/active/HomeItemView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    :goto_0
    new-array v3, v4, [Ljava/lang/Object;

    .line 206
    invoke-static {v2, v1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v1}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$400(Lcom/google/glass/home/timeline/active/HomeItemView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v1}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$400(Lcom/google/glass/home/timeline/active/HomeItemView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    .line 210
    invoke-virtual {v2}, Lcom/google/glass/home/timeline/active/HomeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$integer;->activity_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 212
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->setWallpaperResponse:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->setUpdate(I)Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 213
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->envelope:Lcom/google/glass/companion/Proto$Envelope;

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->setWallpaperResponse:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/Proto$Envelope;->setSetWallpaperResponseG2C(Lcom/google/glass/companion/Proto$SetWallpaperResponse;)Lcom/google/glass/companion/Proto$Envelope;

    .line 214
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v1}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$500(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->envelope:Lcom/google/glass/companion/Proto$Envelope;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 216
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v1}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$200(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->WALLPAPER_UPDATED_ON_GLASS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 217
    return-void

    .line 207
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public onSaveFailed()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onSaved()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method
