.class public final Lcom/google/android/gms/fitness/data/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/fitness/data/DataType;

.field public static final b:Lcom/google/android/gms/fitness/data/DataType;

.field public static final c:Lcom/google/android/gms/fitness/data/DataType;

.field public static final d:Lcom/google/android/gms/fitness/data/DataType;

.field public static final e:Lcom/google/android/gms/fitness/data/DataType;

.field public static final f:Lcom/google/android/gms/fitness/data/DataType;

.field public static final g:Lcom/google/android/gms/fitness/data/DataType;

.field public static final h:Lcom/google/android/gms/fitness/data/DataType;

.field public static final i:Ljava/util/Set;

.field public static final j:[Lcom/google/android/gms/fitness/data/DataType;

.field public static final k:[Ljava/lang/String;

.field private static final l:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/gms/fitness/data/b;->a:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->a:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->a:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->d:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->r:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v0, Lcom/google/android/gms/fitness/data/b;->n:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->c:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.heart_rate.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->s:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->t:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->u:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->d:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.location.bounding_box"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->v:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->w:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->x:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->y:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->e:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.power.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->s:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->t:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->u:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->f:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.speed.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->s:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->t:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->u:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->g:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.weight.summary"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->s:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->t:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/c;->u:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->h:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/b;->a:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/fitness/data/b;->n:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/fitness/data/b;->d:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/fitness/data/b;->p:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/fitness/data/b;->k:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gms/fitness/data/b;->v:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/fitness/data/b;->l:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->i:Ljava/util/Set;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->c:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->d:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->e:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->f:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/fitness/data/a;->g:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/fitness/data/a;->a:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/fitness/data/a;->h:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->j:[Lcom/google/android/gms/fitness/data/DataType;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->c:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->e:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->f:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/fitness/data/a;->g:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/fitness/data/a;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/fitness/data/a;->h:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->k:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/fitness/data/AggregateDataTypes$1;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/AggregateDataTypes$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/a;->l:Ljava/util/Map;

    return-void
.end method
