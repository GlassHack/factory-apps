.class final Lcom/google/android/gms/internal/fc$e;
.super Lcom/google/android/gms/common/internal/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/ev;",
        ">.b<",
        "Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final LF:Ljava/lang/String;

.field final synthetic MY:Lcom/google/android/gms/internal/fc;

.field private final Nc:I

.field private final mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fc$e;->MY:Lcom/google/android/gms/internal/fc;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/c$b;-><init>(Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/fc$e;->mAccount:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fc$e;->LF:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/fc$e;->Nc:I

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$e;->MY:Lcom/google/android/gms/internal/fc;

    invoke-static {v0}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/internal/fc;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fc$e;->MY:Lcom/google/android/gms/internal/fc;

    invoke-static {v0}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/internal/fc;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$e;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/fc$e;->LF:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/fc$e;->Nc:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;->onDataChanged(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected cN()V
    .locals 0

    return-void
.end method

.method protected synthetic f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fc$e;->b(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)V

    return-void
.end method
