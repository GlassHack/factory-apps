.class public final Lcom/google/android/gms/auth/be/change/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean p1, p0, Lcom/google/android/gms/auth/be/change/c;->a:Z

    .line 103
    iput-object p2, p0, Lcom/google/android/gms/auth/be/change/c;->b:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/google/android/gms/auth/be/change/c;->c:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const-string v0, "<StoredState>[isConsistent= %s, expectedNames=%s, expectedHmacs=*****]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/auth/be/change/c;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/auth/be/change/c;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
