.class public final Lcom/google/android/location/h/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/bc;


# instance fields
.field private final a:Lcom/google/android/location/h/s;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/location/h/s;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/h/q;-><init>(Lcom/google/android/location/h/s;B)V

    .line 70
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/h/s;B)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/android/location/h/q;->a:Lcom/google/android/location/h/s;

    .line 81
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/location/h/q;->b:I

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/location/h/q;->c:I

    .line 83
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/f/bd;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p2}, Lcom/google/android/location/h/q;->a(Ljava/util/Map;)Lcom/google/android/location/h/r;

    move-result-object v8

    .line 136
    invoke-virtual {v8}, Lcom/google/android/location/h/r;->a()Ljava/lang/String;

    move-result-object v5

    .line 137
    if-nez v5, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :cond_1
    invoke-virtual {p0, v5, p2}, Lcom/google/android/location/h/q;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/location/f/t;

    move-result-object v4

    .line 143
    if-eqz v4, :cond_0

    .line 148
    iget-object v6, v4, Lcom/google/android/location/f/t;->a:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/google/android/location/h/q;->a:Lcom/google/android/location/h/s;

    invoke-interface {v1, v6}, Lcom/google/android/location/h/s;->b(Ljava/lang/String;)Lcom/google/android/location/f/p;

    move-result-object v7

    .line 151
    if-nez v7, :cond_2

    .line 152
    sget-boolean v1, Lcom/google/android/location/j/a;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "ModelLocalizerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No model for level: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 164
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v7, v0}, Lcom/google/android/location/f/p;->a(Ljava/util/List;)Lcom/google/android/location/f/q;

    move-result-object v3

    .line 166
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "ModelLocalizerV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Level Model Result is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_3
    new-instance v0, Lcom/google/android/location/f/m;

    iget v1, v3, Lcom/google/android/location/f/q;->a:I

    iget v2, v3, Lcom/google/android/location/f/q;->b:I

    iget v3, v3, Lcom/google/android/location/f/q;->c:I

    iget v4, v4, Lcom/google/android/location/f/t;->b:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v4, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    invoke-interface {v7}, Lcom/google/android/location/f/p;->a()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/f/m;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 171
    new-instance v1, Lcom/google/android/location/f/bd;

    const/4 v2, 0x3

    iget v3, v8, Lcom/google/android/location/h/r;->a:I

    add-int/lit8 v3, v3, 0x64

    sget-object v4, Lcom/google/android/location/f/bd;->a:Ljava/util/Set;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/location/f/bd;-><init>(ILcom/google/android/location/f/ak;ILjava/util/Set;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/location/f/t;
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/location/h/q;->a:Lcom/google/android/location/h/s;

    invoke-interface {v0, p1}, Lcom/google/android/location/h/s;->a(Ljava/lang/String;)Lcom/google/android/location/f/s;

    move-result-object v0

    .line 230
    if-nez v0, :cond_2

    .line 231
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "ModelLocalizerV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No level selector for cluster: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 239
    :cond_1
    :goto_0
    return-object v0

    .line 236
    :cond_2
    invoke-virtual {v0, p2}, Lcom/google/android/location/f/s;->a(Ljava/util/Map;)Lcom/google/android/location/f/t;

    move-result-object v0

    .line 237
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "ModelLocalizerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Level model result is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Lcom/google/android/location/h/r;
    .locals 5

    .prologue
    .line 185
    sget-object v2, Lcom/google/android/location/f/bd;->a:Ljava/util/Set;

    .line 186
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, p0, Lcom/google/android/location/h/q;->b:I

    if-le v1, v4, :cond_7

    .line 188
    sget-object v1, Lcom/google/android/location/f/bd;->a:Ljava/util/Set;

    if-ne v2, v1, :cond_6

    .line 189
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 192
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v2, v1

    .line 194
    goto :goto_0

    .line 198
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 199
    iget-object v0, p0, Lcom/google/android/location/h/q;->a:Lcom/google/android/location/h/s;

    invoke-interface {v0, v2}, Lcom/google/android/location/h/s;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    if-eqz v0, :cond_1

    .line 201
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 204
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 203
    :cond_2
    const/4 v1, 0x1

    goto :goto_4

    .line 210
    :cond_3
    new-instance v0, Lcom/google/android/location/h/r;

    iget v1, p0, Lcom/google/android/location/h/q;->c:I

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/h/r;-><init>(ILjava/util/Map;)V

    .line 212
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_4

    const-string v1, "ModelLocalizerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cluster result is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/location/h/r;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 215
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_5

    const-string v1, "ModelLocalizerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Required cluster confidence "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/android/location/h/q;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/location/h/r;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_5
    return-object v0

    :cond_6
    move-object v1, v2

    goto/16 :goto_1

    :cond_7
    move-object v1, v2

    goto/16 :goto_2
.end method
