.class public final Lcom/google/android/location/internal/server/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:Ljava/util/Map;

.field final c:Ljava/util/Map;

.field d:Lcom/google/android/location/p/j;

.field e:I

.field f:Z

.field g:Z

.field h:Lcom/google/android/location/b/af;

.field final i:Lcom/google/android/location/p/a;

.field j:Ljava/util/Set;


# direct methods
.method public constructor <init>(ILcom/google/android/location/b/af;Lcom/google/android/location/p/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/b;->b:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/b;->c:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/b;->d:Lcom/google/android/location/p/j;

    .line 51
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/location/internal/server/b;->e:I

    .line 52
    iput-boolean v2, p0, Lcom/google/android/location/internal/server/b;->f:Z

    .line 55
    iput-boolean v2, p0, Lcom/google/android/location/internal/server/b;->g:Z

    .line 64
    iput p1, p0, Lcom/google/android/location/internal/server/b;->a:I

    .line 65
    iput-object p2, p0, Lcom/google/android/location/internal/server/b;->h:Lcom/google/android/location/b/af;

    .line 66
    iput-object p3, p0, Lcom/google/android/location/internal/server/b;->i:Lcom/google/android/location/p/a;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/server/b;->j:Ljava/util/Set;

    .line 68
    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->j:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->j:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method static a(Ljava/io/PrintWriter;JLcom/google/android/location/internal/server/p;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityClient: duration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/google/android/location/internal/server/i;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/google/android/location/internal/server/p;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, " tag: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/google/android/location/internal/server/p;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 173
    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/location/internal/server/b;->e:I

    .line 207
    iput-boolean v2, p0, Lcom/google/android/location/internal/server/b;->f:Z

    .line 208
    iput-boolean v2, p0, Lcom/google/android/location/internal/server/b;->g:Z

    .line 209
    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/c;

    .line 210
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityRecognitionListener"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Still have activity pending intent "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/google/android/location/internal/server/c;->b:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    iget v1, p0, Lcom/google/android/location/internal/server/b;->e:I

    iget v5, v0, Lcom/google/android/location/internal/server/c;->d:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/location/internal/server/b;->e:I

    .line 212
    iget-boolean v1, p0, Lcom/google/android/location/internal/server/b;->f:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/location/internal/server/c;->i:Z

    if-eqz v1, :cond_3

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/location/internal/server/b;->f:Z

    .line 213
    iget-boolean v1, p0, Lcom/google/android/location/internal/server/b;->g:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/location/internal/server/b;->g:Z

    goto :goto_0

    :cond_3
    move v1, v2

    .line 212
    goto :goto_1

    :cond_4
    move v0, v2

    .line 213
    goto :goto_2

    .line 217
    :cond_5
    invoke-static {}, Lcom/google/android/location/p/j;->a()Lcom/google/android/location/p/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/b;->d:Lcom/google/android/location/p/j;

    .line 218
    iget v0, p0, Lcom/google/android/location/internal/server/b;->e:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    int-to-long v2, v0

    .line 219
    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/g;

    .line 220
    iget v4, v0, Lcom/google/android/location/internal/server/g;->d:I

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_6

    iget-object v4, v0, Lcom/google/android/location/internal/server/g;->j:Lcom/google/android/location/p/j;

    if-eqz v4, :cond_6

    .line 221
    iget-object v4, p0, Lcom/google/android/location/internal/server/b;->d:Lcom/google/android/location/p/j;

    iget-object v0, v0, Lcom/google/android/location/internal/server/g;->j:Lcom/google/android/location/p/j;

    invoke-virtual {v4, v0}, Lcom/google/android/location/p/j;->a(Lcom/google/android/location/p/j;)V

    goto :goto_3

    .line 224
    :cond_7
    return-void
.end method
