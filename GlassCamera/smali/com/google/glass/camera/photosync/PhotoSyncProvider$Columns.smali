.class Lcom/google/glass/camera/photosync/PhotoSyncProvider$Columns;
.super Ljava/lang/Object;
.source "PhotoSyncProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/photosync/PhotoSyncProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Columns"
.end annotation


# static fields
.field static final IS_PENDING:Ljava/lang/String; = "is_pending"

.field static final IS_SYNCED:Ljava/lang/String; = "is_synced"

.field static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
