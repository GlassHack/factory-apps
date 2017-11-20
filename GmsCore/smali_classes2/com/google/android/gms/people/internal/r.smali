.class final Lcom/google/android/gms/people/internal/r;
.super Lcom/google/android/gms/common/internal/g;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/g;


# instance fields
.field final synthetic b:Lcom/google/android/gms/people/internal/l;

.field private final c:Lcom/google/android/gms/common/api/Status;

.field private final d:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/google/android/gms/people/internal/r;->b:Lcom/google/android/gms/people/internal/l;

    .line 971
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/g;-><init>(Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;)V

    .line 972
    iput-object p3, p0, Lcom/google/android/gms/people/internal/r;->c:Lcom/google/android/gms/common/api/Status;

    .line 973
    iput-object p4, p0, Lcom/google/android/gms/people/internal/r;->d:Landroid/os/ParcelFileDescriptor;

    .line 974
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/people/internal/r;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/google/android/gms/people/internal/r;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 963
    check-cast p1, Lcom/google/android/gms/common/api/i;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/i;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/google/android/gms/people/internal/r;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/r;->a()V

    .line 986
    return-void
.end method

.method public final h_()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/android/gms/people/internal/r;->d:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
