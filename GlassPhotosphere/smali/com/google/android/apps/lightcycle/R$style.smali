.class public final Lcom/google/android/apps/lightcycle/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static main_menu_button_pro:I

.field public static main_menu_button_text:I

.field public static notification_progress_bar:I

.field public static notification_text:I

.field public static notification_title:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    const/high16 v0, 0x7f090000

    sput v0, Lcom/google/android/apps/lightcycle/R$style;->main_menu_button_pro:I

    .line 282
    const v0, 0x7f090001

    sput v0, Lcom/google/android/apps/lightcycle/R$style;->main_menu_button_text:I

    .line 283
    const v0, 0x7f090004

    sput v0, Lcom/google/android/apps/lightcycle/R$style;->notification_progress_bar:I

    .line 284
    const v0, 0x7f090003

    sput v0, Lcom/google/android/apps/lightcycle/R$style;->notification_text:I

    .line 285
    const v0, 0x7f090002

    sput v0, Lcom/google/android/apps/lightcycle/R$style;->notification_title:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
