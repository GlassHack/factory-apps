.class final Lcom/google/glass/boutique/BoutiqueDatabaseHelper$Indexes;
.super Ljava/lang/Object;
.source "BoutiqueDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/BoutiqueDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Indexes"
.end annotation


# static fields
.field public static final APK_PACKAGE_NAME_INDEX:Ljava/lang/String; = "ix_apk_package_name"

.field public static final GLASSWARE_ID_INDEX:Ljava/lang/String; = "ix_glassware_id"

.field public static final IS_ENABLED_INDEX:Ljava/lang/String; = "ix_is_enabled"

.field public static final MIRROR_PROJECT_ID_INDEX:Ljava/lang/String; = "ix_mirror_project_id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
