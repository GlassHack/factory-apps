.class final Lcom/google/android/gms/people/internal/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/g;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/people/internal/b/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/internal/b/i;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/gms/people/internal/b/j;->b:Lcom/google/android/gms/people/internal/b/i;

    iput-object p2, p0, Lcom/google/android/gms/people/internal/b/j;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/people/internal/b/j;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final h_()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
