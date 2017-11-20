.class public abstract Lcom/google/android/maps/driveabout/g/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->a:J

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->b:J

    .line 85
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/g/j;->a:J

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->b:J

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "time"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    move-wide v0, v2

    .line 97
    :goto_0
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->a:J

    .line 98
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "delay"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    :goto_1
    iput-wide v2, p0, Lcom/google/android/maps/driveabout/g/j;->b:J

    .line 101
    return-void

    .line 97
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 100
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1
.end method

.method public static a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-static {p0}, Lcom/google/android/maps/driveabout/g/j;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/android/maps/driveabout/g/j;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 110
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 139
    invoke-static {p0}, Lcom/google/android/maps/driveabout/g/j;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Ljava/io/Writer;)V
.end method

.method public final c(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 146
    const-string v0, "<event"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->a:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, " time=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/j;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->b:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, " delay=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 153
    :cond_1
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/g/j;->a(Ljava/io/Writer;)V

    .line 155
    const-string v0, "</event>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 170
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->a:J

    .line 171
    return-void
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->a:J

    return-wide v0
.end method

.method public final g()Z
    .locals 4

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/g/j;->b:J

    return-wide v0
.end method
