.class public final Lcom/google/android/gms/fitness/f/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/c/a/as;

.field private static final f:Ljava/util/Map;

.field private static final g:Ljava/util/Map;


# instance fields
.field private b:Ljava/util/Map;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0x7c

    invoke-static {v0}, Lcom/google/c/a/am;->a(C)Lcom/google/c/a/am;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/c/a/am;->a(Ljava/lang/String;)Lcom/google/c/a/as;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/f/o;->a:Lcom/google/c/a/as;

    .line 43
    invoke-static {}, Lcom/google/c/c/be;->e()Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->j:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->i:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->h:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->e:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->f:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->t:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->s:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->q:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->r:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->o:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->n:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->k:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->u:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->m:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->l:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->e:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->g:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->f:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->p:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->g:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->c:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->v:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->h:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/bf;->a()Lcom/google/c/c/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/f/o;->f:Ljava/util/Map;

    .line 75
    invoke-static {}, Lcom/google/c/c/be;->e()Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->j:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->i:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->h:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->e:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->f:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->t:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->s:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->q:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->r:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->o:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->n:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->k:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->u:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->m:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->l:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->e:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->g:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->f:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->p:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->g:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->c:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->v:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->h:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/bf;->a()Lcom/google/c/c/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/f/o;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/o;->b:Ljava/util/Map;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/o;->c:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/o;->d:Ljava/util/Map;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/o;->e:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/o;->a()V

    .line 109
    return-void
.end method

.method public static a(Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/f/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/google/android/gms/fitness/f/o;->f:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/google/android/gms/fitness/f/o;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/f/o;->g:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/google/android/gms/fitness/f/o;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 6

    .prologue
    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    if-nez v1, :cond_1

    .line 134
    const-string v1, "No scope found. Assuming private custom data: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_2
    return-object v2
.end method

.method private declared-synchronized a()V
    .locals 4

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->P:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iput-object v0, p0, Lcom/google/android/gms/fitness/f/o;->c:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/o;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 158
    sget-object v1, Lcom/google/android/gms/fitness/f/o;->a:Lcom/google/c/a/as;

    invoke-virtual {v1, v0}, Lcom/google/c/a/as;->a(Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    iget-object v2, p0, Lcom/google/android/gms/fitness/f/o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->Q:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/o;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    iput-object v0, p0, Lcom/google/android/gms/fitness/f/o;->e:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/o;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 168
    sget-object v1, Lcom/google/android/gms/fitness/f/o;->a:Lcom/google/c/a/as;

    invoke-virtual {v1, v0}, Lcom/google/c/a/as;->a(Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    iget-object v2, p0, Lcom/google/android/gms/fitness/f/o;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 173
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/o;->a()V

    .line 147
    sget-object v0, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    if-ne p2, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/o;->b:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/f/o;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/o;->d:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/f/o;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
