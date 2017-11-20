.class final Lcom/google/glass/entity/EntityProviderConstants$SyncMetadataColumns;
.super Ljava/lang/Object;
.source "EntityProviderConstants.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityProviderConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SyncMetadataColumns"
.end annotation


# static fields
.field static final METADATA_KEY:Ljava/lang/String; = "metadata_key"

.field static final METADATA_VALUE:Ljava/lang/String; = "metadata_value"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
