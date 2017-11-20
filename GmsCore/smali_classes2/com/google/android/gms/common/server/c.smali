.class public final Lcom/google/android/gms/common/server/c;
.super Lcom/google/android/gms/common/server/f;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/Class;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/d/v;Lcom/android/d/u;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)V
    .locals 12

    .prologue
    .line 74
    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/server/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/d/v;Lcom/android/d/u;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)V

    .line 77
    return-void

    .line 74
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/d/v;Lcom/android/d/u;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)V
    .locals 10

    .prologue
    .line 100
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/common/server/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/d/v;Lcom/android/d/u;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)V

    .line 103
    iput-object p4, p0, Lcom/google/android/gms/common/server/c;->c:Ljava/lang/Class;

    .line 104
    iput-object p5, p0, Lcom/google/android/gms/common/server/c;->d:Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/d/m;)Lcom/android/d/t;
    .locals 5

    .prologue
    .line 120
    :try_start_0
    iget-boolean v0, p0, Lcom/android/d/p;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/d/a/i;->a(Lcom/android/d/m;)Lcom/android/d/c;

    move-result-object v0

    move-object v1, v0

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/c;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/server/c;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse;

    .line 124
    :goto_1
    iget v2, p1, Lcom/android/d/m;->a:I

    iget-object v3, p1, Lcom/android/d/m;->b:[B

    iput v2, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->h:I

    iput-object v3, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->i:[B

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j:Z

    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a([B)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/google/android/gms/common/server/response/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    :try_start_1
    new-instance v3, Lcom/google/android/gms/common/server/response/c;

    invoke-direct {v3}, Lcom/google/android/gms/common/server/response/c;-><init>()V

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/google/android/gms/common/server/response/l; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    .line 125
    :goto_2
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/d/t;->a(Ljava/lang/Object;Lcom/android/d/c;)Lcom/android/d/t;

    move-result-object v0

    .line 127
    :goto_3
    return-object v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/server/c;->c:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/common/server/c;->d:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/common/server/c;->d:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse;
    :try_end_3
    .catch Lcom/google/android/gms/common/server/response/l; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/google/android/gms/common/server/response/l; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    throw v0
    :try_end_5
    .catch Lcom/google/android/gms/common/server/response/l; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_5

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lcom/android/d/o;

    invoke-direct {v1, v0}, Lcom/android/d/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/d/t;->a(Lcom/android/d/aa;)Lcom/android/d/t;

    move-result-object v0

    goto :goto_3

    .line 128
    :catch_1
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :catch_2
    move-exception v0

    .line 133
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 134
    :catch_3
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 136
    :catch_4
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 138
    :catch_5
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :catch_6
    move-exception v2

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_4
.end method
