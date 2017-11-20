.class public final Lcom/google/glass/sound/R$fraction;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "fraction"
.end annotation


# static fields
.field public static failed_message_background_alpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 521
    const/high16 v0, 0x7f0f0000

    sput v0, Lcom/google/glass/sound/R$fraction;->failed_message_background_alpha:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
