.class public final Lcom/google/android/apps/lightcycle/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static help_and_tips:I

.field public static picasa_create_album_request:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/high16 v0, 0x7f050000

    sput v0, Lcom/google/android/apps/lightcycle/R$raw;->help_and_tips:I

    .line 149
    const v0, 0x7f050001

    sput v0, Lcom/google/android/apps/lightcycle/R$raw;->picasa_create_album_request:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
