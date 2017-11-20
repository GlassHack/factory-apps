.class public final Lcom/google/android/youtube/core/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/youtube/core/utils/g;

.field private static b:Lcom/google/android/youtube/core/utils/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/youtube/core/utils/i;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/i;-><init>()V

    .line 12
    sput-object v0, Lcom/google/android/youtube/core/utils/h;->a:Lcom/google/android/youtube/core/utils/g;

    .line 21
    new-instance v0, Lcom/google/android/youtube/core/utils/j;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/j;-><init>()V

    .line 20
    sput-object v0, Lcom/google/android/youtube/core/utils/h;->b:Lcom/google/android/youtube/core/utils/g;

    .line 10
    return-void
.end method

.method public static a()Lcom/google/android/youtube/core/utils/g;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/youtube/core/utils/h;->a:Lcom/google/android/youtube/core/utils/g;

    return-object v0
.end method
