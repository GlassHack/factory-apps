.class public final Lcom/google/android/location/f/e;
.super Lcom/google/android/location/f/y;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/f/g;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/g;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/location/f/y;-><init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;J)V

    .line 35
    iput-object p5, p0, Lcom/google/android/location/f/e;->a:Lcom/google/android/location/f/g;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/f/e;->b:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public static a(Ljava/io/PrintWriter;Lcom/google/android/location/f/e;)V
    .locals 4

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v0, "CellLocatorResult [primary="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget-object v0, p1, Lcom/google/android/location/f/e;->a:Lcom/google/android/location/f/g;

    invoke-static {p0, v0}, Lcom/google/android/location/f/g;->a(Ljava/io/PrintWriter;Lcom/google/android/location/f/g;)V

    .line 77
    const-string v0, "], Cache={"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget-object v0, p1, Lcom/google/android/location/f/e;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 79
    const/4 v0, 0x1

    .line 80
    iget-object v1, p1, Lcom/google/android/location/f/e;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    if-nez v1, :cond_1

    .line 82
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    :cond_1
    const/4 v2, 0x0

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ak;

    invoke-static {p0, v0}, Lcom/google/android/location/f/ak;->a(Ljava/io/PrintWriter;Lcom/google/android/location/f/ak;)V

    move v1, v2

    .line 88
    goto :goto_1

    .line 90
    :cond_2
    const-string v0, "}, "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    if-nez p1, :cond_3

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    :goto_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    const-string v0, "LocatorResult [position="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    invoke-static {p0, v0}, Lcom/google/android/location/f/ak;->a(Ljava/io/PrintWriter;Lcom/google/android/location/f/ak;)V

    const-string v0, ", status="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ", reportTime="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/google/android/location/f/y;->e:J

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/e;)V
    .locals 4

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v0, "CellLocatorResult [primary="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p1, Lcom/google/android/location/f/e;->a:Lcom/google/android/location/f/g;

    invoke-static {p0, v0}, Lcom/google/android/location/f/g;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/g;)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, "], Cache={"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v0, p1, Lcom/google/android/location/f/e;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 54
    const/4 v0, 0x1

    .line 55
    iget-object v1, p1, Lcom/google/android/location/f/e;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    if-nez v1, :cond_1

    .line 57
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_1
    const/4 v2, 0x0

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ak;

    invoke-static {p0, v0}, Lcom/google/android/location/f/ak;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/ak;)V

    move v1, v2

    .line 63
    goto :goto_1

    .line 65
    :cond_2
    const-string v0, "}, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {p0, p1}, Lcom/google/android/location/f/y;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/y;)V

    .line 67
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellLocatorResult [primaryCell="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/f/e;->a:Lcom/google/android/location/f/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellCacheEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/f/e;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/location/f/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
