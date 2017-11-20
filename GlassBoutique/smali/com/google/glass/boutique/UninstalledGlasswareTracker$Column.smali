.class final Lcom/google/glass/boutique/UninstalledGlasswareTracker$Column;
.super Ljava/lang/Object;
.source "UninstalledGlasswareTracker.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/UninstalledGlasswareTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Column"
.end annotation


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PACKAGE_VERSION:Ljava/lang/String; = "package_version"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
