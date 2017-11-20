.class Lcom/google/glass/composite/CompositeBuilder$1;
.super Lcom/google/glass/async/SerialAsyncTask;
.source "CompositeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/composite/CompositeBuilder;->buildCompositeAsync(Lcom/google/glass/camera/Picture;ZLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;JLcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/async/SerialAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private composite:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/glass/composite/CompositeBuilder;

.field private timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$callback:Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;

.field final synthetic val$captureTimeMillis:J

.field final synthetic val$isPreview:Z

.field final synthetic val$picture:Lcom/google/glass/camera/Picture;

.field final synthetic val$previewItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/composite/CompositeBuilder;ZLcom/google/glass/camera/Picture;JLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/composite/CompositeBuilder;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    iput-boolean p2, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$isPreview:Z

    iput-object p3, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$picture:Lcom/google/glass/camera/Picture;

    iput-wide p4, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$captureTimeMillis:J

    iput-object p6, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$previewItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p7, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$callback:Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;

    invoke-direct {p0}, Lcom/google/glass/async/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs serialDoInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 156
    iget-boolean v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$isPreview:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v1}, Lcom/google/glass/camera/Picture;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-static {v2}, Lcom/google/glass/composite/CompositeBuilder;->access$000(Lcom/google/glass/composite/CompositeBuilder;)Lcom/google/glass/camera/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/composite/CompositeBuilder;->createComposite(Landroid/graphics/Bitmap;Lcom/google/glass/camera/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->composite:Landroid/graphics/Bitmap;

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->composite:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-virtual {v0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to create composite."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 196
    :goto_1
    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v1}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/composite/CompositeBuilder;->loadPicture(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 160
    .local v7, "fullPicture":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-static {v1}, Lcom/google/glass/composite/CompositeBuilder;->access$100(Lcom/google/glass/composite/CompositeBuilder;)Lcom/google/glass/camera/Size;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/google/glass/composite/CompositeBuilder;->createComposite(Landroid/graphics/Bitmap;Lcom/google/glass/camera/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->composite:Landroid/graphics/Bitmap;

    .line 161
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 170
    .end local v7    # "fullPicture":Landroid/graphics/Bitmap;
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$isPreview:Z

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder$1;->composite:Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$captureTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/composite/CompositeBuilder;->savePreviewComposite(Landroid/graphics/Bitmap;J)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "compositeFilePath":Ljava/lang/String;
    :goto_2
    if-nez v6, :cond_3

    .line 177
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-virtual {v0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to save composite."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 173
    .end local v6    # "compositeFilePath":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-static {v1}, Lcom/google/glass/composite/CompositeBuilder;->access$200(Lcom/google/glass/composite/CompositeBuilder;)Lcom/google/glass/util/FileSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/composite/CompositeBuilder$1;->composite:Landroid/graphics/Bitmap;

    iget-wide v3, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$captureTimeMillis:J

    iget-object v5, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$picture:Lcom/google/glass/camera/Picture;

    .line 174
    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/composite/CompositeBuilder;->saveFullComposite(Lcom/google/glass/util/FileSaver;Landroid/graphics/Bitmap;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "compositeFilePath":Ljava/lang/String;
    goto :goto_2

    .line 182
    :cond_3
    iget-boolean v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$isPreview:Z

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    iget-wide v1, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$captureTimeMillis:J

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/glass/composite/CompositeBuilder;->insertPreviewTimelineItem(Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 191
    :goto_3
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-virtual {v0}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to insert composite image into timeline."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$previewItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    iget-wide v1, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$captureTimeMillis:J

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/glass/composite/CompositeBuilder;->insertFullTimelineItem(Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_3

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$previewItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0, v6, v1}, Lcom/google/glass/composite/CompositeBuilder;->updateFullTimelineItem(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_3

    .line 196
    :cond_6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/composite/CompositeBuilder$1;->serialDoInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected serialOnPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$callback:Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$callback:Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;

    iget-object v1, p0, Lcom/google/glass/composite/CompositeBuilder$1;->composite:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/glass/composite/CompositeBuilder$1;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;->onCompositeReady(Landroid/graphics/Bitmap;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/glass/composite/CompositeBuilder$1;->val$callback:Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;

    invoke-interface {v0}, Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;->onError()V

    goto :goto_0
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/composite/CompositeBuilder$1;->serialOnPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
