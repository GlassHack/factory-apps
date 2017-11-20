.class final Lcom/google/android/gms/http/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/google/android/gms/http/d;->a:Ljava/lang/String;

    .line 385
    iput p2, p0, Lcom/google/android/gms/http/d;->b:I

    .line 386
    iput-boolean p3, p0, Lcom/google/android/gms/http/d;->c:Z

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZB)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/http/d;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method
