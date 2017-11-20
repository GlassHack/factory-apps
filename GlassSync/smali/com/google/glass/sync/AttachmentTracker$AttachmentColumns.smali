.class final Lcom/google/glass/sync/AttachmentTracker$AttachmentColumns;
.super Ljava/lang/Object;
.source "AttachmentTracker.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/AttachmentTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttachmentColumns"
.end annotation


# static fields
.field public static final FILE_TYPE:Ljava/lang/String; = "file_type"

.field public static final REFCOUNT:Ljava/lang/String; = "refcount"

.field public static final UPDATE_TIMESTAMP:Ljava/lang/String; = "update_timestamp"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
