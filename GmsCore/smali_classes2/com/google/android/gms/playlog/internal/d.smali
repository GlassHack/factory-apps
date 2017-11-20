.class public final Lcom/google/android/gms/playlog/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/playlog/internal/d;-><init>(B)V

    .line 60
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/d;->a:Ljava/util/ArrayList;

    .line 67
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/playlog/internal/d;->b:I

    .line 68
    return-void
.end method
