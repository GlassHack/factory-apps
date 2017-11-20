.class public final Lcom/google/googlenav/common/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/e/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(JJ)V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;JJ)V

    .line 220
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 865
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/googlenav/common/e/a;->b(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private static a(Ljava/lang/String;JJ)V
    .locals 3

    .prologue
    .line 204
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "values not equal, expected ["

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 852
    if-nez p1, :cond_0

    .line 853
    const-string v0, "object is null"

    invoke-static {p0, v0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 95
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const-string v0, "condition was false"

    invoke-static {p0, v0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Z)V

    .line 119
    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/googlenav/common/e/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1005
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Assert common"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 984
    if-nez p1, :cond_0

    .line 985
    const-string v0, "object is null"

    invoke-static {p0, v0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 990
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "monitor on ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is held by current thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    const-string v0, "condition was true"

    invoke-static {p0, v0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/googlenav/common/e/a;->b(Ljava/lang/String;Z)V

    .line 142
    return-void
.end method
