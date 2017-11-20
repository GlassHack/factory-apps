.class final Lcom/google/android/gms/people/internal/o;
.super Lcom/google/android/gms/people/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/people/internal/l;

.field private final b:Lcom/google/android/gms/common/api/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/common/api/i;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/android/gms/people/internal/o;->a:Lcom/google/android/gms/people/internal/l;

    invoke-direct {p0}, Lcom/google/android/gms/people/internal/a;-><init>()V

    .line 405
    iput-object p2, p0, Lcom/google/android/gms/people/internal/o;->b:Lcom/google/android/gms/common/api/i;

    .line 406
    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 6

    .prologue
    .line 410
    const-string v0, "PeopleService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "PeopleClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Owner callback: status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nholder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/people/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/people/internal/l;->a(ILandroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 416
    if-nez p3, :cond_1

    const/4 v0, 0x0

    .line 418
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/people/internal/o;->a:Lcom/google/android/gms/people/internal/l;

    new-instance v3, Lcom/google/android/gms/people/internal/q;

    iget-object v4, p0, Lcom/google/android/gms/people/internal/o;->a:Lcom/google/android/gms/people/internal/l;

    iget-object v5, p0, Lcom/google/android/gms/people/internal/o;->b:Lcom/google/android/gms/common/api/i;

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/google/android/gms/people/internal/q;-><init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/model/c;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/people/internal/l;->b(Lcom/google/android/gms/common/internal/g;)V

    .line 419
    return-void

    .line 416
    :cond_1
    new-instance v0, Lcom/google/android/gms/people/model/c;

    invoke-direct {v0, p3}, Lcom/google/android/gms/people/model/c;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method
