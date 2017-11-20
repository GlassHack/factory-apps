.class final Lcom/google/android/gms/blescanner/compat/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;

.field final b:Ljava/util/Set;

.field final c:Lcom/google/android/gms/blescanner/compat/k;

.field final d:Lcom/google/android/gms/blescanner/compat/ScanSettings;


# direct methods
.method constructor <init>(Lcom/google/android/gms/blescanner/compat/ScanSettings;Ljava/util/List;Lcom/google/android/gms/blescanner/compat/k;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/gms/blescanner/compat/g;->d:Lcom/google/android/gms/blescanner/compat/ScanSettings;

    .line 80
    iput-object p2, p0, Lcom/google/android/gms/blescanner/compat/g;->a:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/g;->b:Ljava/util/Set;

    .line 82
    iput-object p3, p0, Lcom/google/android/gms/blescanner/compat/g;->c:Lcom/google/android/gms/blescanner/compat/k;

    .line 83
    return-void
.end method
