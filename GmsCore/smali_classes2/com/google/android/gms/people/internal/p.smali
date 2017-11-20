.class final Lcom/google/android/gms/people/internal/p;
.super Lcom/google/android/gms/people/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/people/internal/l;

.field private final b:Lcom/google/android/gms/common/api/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/common/api/i;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/google/android/gms/people/internal/p;->a:Lcom/google/android/gms/people/internal/l;

    invoke-direct {p0}, Lcom/google/android/gms/people/internal/a;-><init>()V

    .line 946
    iput-object p2, p0, Lcom/google/android/gms/people/internal/p;->b:Lcom/google/android/gms/common/api/i;

    .line 947
    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    .prologue
    .line 952
    const-string v0, "PeopleService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const-string v0, "PeopleClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Avatar callback: status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pfd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/people/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/people/internal/l;->a(ILandroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 959
    iget-object v1, p0, Lcom/google/android/gms/people/internal/p;->a:Lcom/google/android/gms/people/internal/l;

    new-instance v2, Lcom/google/android/gms/people/internal/r;

    iget-object v3, p0, Lcom/google/android/gms/people/internal/p;->a:Lcom/google/android/gms/people/internal/l;

    iget-object v4, p0, Lcom/google/android/gms/people/internal/p;->b:Lcom/google/android/gms/common/api/i;

    invoke-direct {v2, v3, v4, v0, p3}, Lcom/google/android/gms/people/internal/r;-><init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/people/internal/l;->b(Lcom/google/android/gms/common/internal/g;)V

    .line 960
    return-void
.end method
