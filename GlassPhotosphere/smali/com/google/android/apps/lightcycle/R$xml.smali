.class public final Lcom/google/android/apps/lightcycle/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static calibration_preferences:I

.field public static panorama_wallpaper:I

.field public static preferences:I

.field public static wallpaper_preferences:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    const/high16 v0, 0x7f040000

    sput v0, Lcom/google/android/apps/lightcycle/R$xml;->calibration_preferences:I

    .line 289
    const v0, 0x7f040001

    sput v0, Lcom/google/android/apps/lightcycle/R$xml;->panorama_wallpaper:I

    .line 290
    const v0, 0x7f040002

    sput v0, Lcom/google/android/apps/lightcycle/R$xml;->preferences:I

    .line 291
    const v0, 0x7f040003

    sput v0, Lcom/google/android/apps/lightcycle/R$xml;->wallpaper_preferences:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
