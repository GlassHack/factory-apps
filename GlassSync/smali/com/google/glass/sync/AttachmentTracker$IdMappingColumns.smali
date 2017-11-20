.class final Lcom/google/glass/sync/AttachmentTracker$IdMappingColumns;
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
    name = "IdMappingColumns"
.end annotation


# static fields
.field public static final ACCESS_TIMESTAMP:Ljava/lang/String; = "access_timestamp"

.field public static final REMOTE_ID:Ljava/lang/String; = "remote_id"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
