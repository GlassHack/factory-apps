.class public final Lcom/google/android/apps/lightcycle/R$menu;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field public static gallery_options:I

.field public static options_menu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const/high16 v0, 0x7f0b0000

    sput v0, Lcom/google/android/apps/lightcycle/R$menu;->gallery_options:I

    .line 145
    const v0, 0x7f0b0001

    sput v0, Lcom/google/android/apps/lightcycle/R$menu;->options_menu:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
