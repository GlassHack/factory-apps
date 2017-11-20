.class Lcom/google/glass/camera/CameraApplication$2;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/CameraApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/CameraApplication;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/glass/camera/CameraApplication$2;->this$0:Lcom/google/glass/camera/CameraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-object v0, p0, Lcom/google/glass/camera/CameraApplication$2;->this$0:Lcom/google/glass/camera/CameraApplication;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "protobuf_blob"

    aput-object v5, v2, v3

    const-string v3, "is_share_target=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    .local v6, "entities":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/google/glass/camera/CameraApplication$2;->this$0:Lcom/google/glass/camera/CameraApplication;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    invoke-static {v6}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lcom/google/glass/voice/QualificationUtils;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
