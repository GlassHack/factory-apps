.class public final Lcom/google/glass/boutique/BoutiqueContract$Columns;
.super Ljava/lang/Object;
.source "BoutiqueContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/BoutiqueContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final APK_PACKAGE_NAME:Ljava/lang/String; = "apk_package_name"

.field public static final GLASSWARE_ID:Ljava/lang/String; = "glassware_id"

.field public static final IS_ENABLED:Ljava/lang/String; = "is_enabled"

.field public static final MIRROR_PROJECT_ID:Ljava/lang/String; = "mirror_project_id"

.field public static final PROTOBUF_BLOB:Ljava/lang/String; = "protobuf_blob"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
