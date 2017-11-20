.class Lcom/google/glass/phone/PhoneCallRemoteViewManager$3;
.super Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.source "PhoneCallRemoteViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallRemoteViewManager;->updateCallerPhoto(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallRemoteViewManager;Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V
    .locals 7
    .param p1, "this$0"    # Lcom/google/glass/phone/PhoneCallRemoteViewManager;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$3;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-static {}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "user\'s image loaded %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$3;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->access$300(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)Landroid/widget/RemoteViews;

    move-result-object v0

    sget v1, Lcom/google/glass/phone/R$id;->phone_call_caller_profile_picture:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 230
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$3;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->access$300(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)Landroid/widget/RemoteViews;

    move-result-object v0

    sget v1, Lcom/google/glass/phone/R$id;->phone_call_caller_profile_picture:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 232
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$3;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->invalidate()V

    .line 234
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager$3;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected prepareContent(F)V
    .locals 3
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$3;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->access$300(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)Landroid/widget/RemoteViews;

    move-result-object v0

    sget v1, Lcom/google/glass/phone/R$id;->phone_call_caller_profile_picture:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 222
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$3;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->invalidate()V

    .line 223
    return-void
.end method
