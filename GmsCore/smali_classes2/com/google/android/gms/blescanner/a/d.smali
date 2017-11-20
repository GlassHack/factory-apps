.class public final Lcom/google/android/gms/blescanner/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/a/d;->a:Ljava/util/List;

    .line 21
    iput-boolean v1, p0, Lcom/google/android/gms/blescanner/a/d;->b:Z

    .line 22
    iput-boolean v1, p0, Lcom/google/android/gms/blescanner/a/d;->c:Z

    .line 23
    iput-boolean v1, p0, Lcom/google/android/gms/blescanner/a/d;->d:Z

    .line 25
    return-void
.end method
