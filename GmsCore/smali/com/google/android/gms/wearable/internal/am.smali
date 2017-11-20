.class final Lcom/google/android/gms/wearable/internal/am;
.super Lcom/google/android/gms/wearable/internal/c;
.source "SourceFile"


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:[B

.field final synthetic g:Lcom/google/android/gms/wearable/internal/al;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/al;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/am;->g:Lcom/google/android/gms/wearable/internal/al;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/am;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/am;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/am;->f:[B

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/wearable/internal/an;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/an;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 3

    .prologue
    .line 46
    check-cast p1, Lcom/google/android/gms/wearable/internal/ay;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/am;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/am;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/am;->f:[B

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/ay;->a(Lcom/google/android/gms/common/api/i;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
