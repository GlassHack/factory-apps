.class final Lcom/google/android/gms/blescanner/compat/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/blescanner/compat/g;

.field final b:Ljava/util/HashMap;

.field c:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/blescanner/compat/g;J)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/gms/blescanner/compat/f;->a:Lcom/google/android/gms/blescanner/compat/g;

    .line 97
    iput-wide p2, p0, Lcom/google/android/gms/blescanner/compat/f;->c:J

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/f;->b:Ljava/util/HashMap;

    .line 99
    return-void
.end method
