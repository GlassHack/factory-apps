.class public final Lcom/google/android/maps/driveabout/model/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/android/maps/driveabout/model/b;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/android/maps/driveabout/model/b;)V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/s;->a:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/s;->b:Lcom/google/android/maps/driveabout/model/b;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/t;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/t;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/t;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/s;->c:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/s;
    .locals 9

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v8

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v8, :cond_0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 74
    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/model/t;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;Ljava/lang/String;Ljava/util/List;)V

    .line 73
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 81
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/model/b;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/b;

    move-result-object v0

    .line 86
    :goto_1
    new-instance v1, Lcom/google/android/maps/driveabout/model/s;

    invoke-direct {v1, v6, v0}, Lcom/google/android/maps/driveabout/model/s;-><init>(Ljava/util/List;Lcom/google/android/maps/driveabout/model/b;)V

    return-object v1

    .line 83
    :cond_1
    sget-object v0, Lcom/google/android/maps/driveabout/model/b;->b:Lcom/google/android/maps/driveabout/model/b;

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/model/t;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/t;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 134
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 137
    check-cast p1, Lcom/google/android/maps/driveabout/model/s;

    .line 138
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/s;->b:Lcom/google/android/maps/driveabout/model/b;

    if-nez v1, :cond_3

    .line 139
    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/s;->b:Lcom/google/android/maps/driveabout/model/b;

    if-nez v1, :cond_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/s;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/s;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/s;->b:Lcom/google/android/maps/driveabout/model/b;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/s;->b:Lcom/google/android/maps/driveabout/model/b;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/model/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 125
    .line 127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/s;->b:Lcom/google/android/maps/driveabout/model/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/s;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/s;->b:Lcom/google/android/maps/driveabout/model/b;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/b;->hashCode()I

    move-result v0

    goto :goto_0
.end method
