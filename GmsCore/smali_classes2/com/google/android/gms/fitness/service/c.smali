.class final Lcom/google/android/gms/fitness/service/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/common/internal/x;

.field final synthetic e:Lcom/google/android/gms/fitness/service/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/b;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/common/internal/x;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/c;->e:Lcom/google/android/gms/fitness/service/b;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/c;->c:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/fitness/service/c;->d:Lcom/google/android/gms/common/internal/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/c;->e:Lcom/google/android/gms/fitness/service/b;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/c;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/service/b;->a(Lcom/google/android/gms/fitness/service/b;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/fitness/service/a;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/c;->e:Lcom/google/android/gms/fitness/service/b;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/c;->d:Lcom/google/android/gms/common/internal/x;

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/service/b;->a(Lcom/google/android/gms/common/internal/x;Lcom/google/android/gms/fitness/service/a;)V

    .line 127
    return-void
.end method
