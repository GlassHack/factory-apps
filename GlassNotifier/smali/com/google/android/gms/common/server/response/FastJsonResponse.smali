.class public abstract Lcom/google/android/gms/common/server/response/FastJsonResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;,
        Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    }
.end annotation


# static fields
.field protected static final QUOTE:Ljava/lang/String; = "\""


# instance fields
.field private XE:I

.field private XF:[B

.field private XG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<TI;TO;>;TI;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getTypeOut()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type for conversion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getTypeOut()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->c(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setIntegerInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_2
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBigIntegerInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->c(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setLongInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->c(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setDoubleInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;D)V

    goto :goto_0

    :pswitch_5
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBigDecimalInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigDecimal;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->c(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBooleanInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_7
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setStringInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->c(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setDecodedBytesInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;[B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getTypeIn()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getConcreteType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getTypeIn()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/util/i;->by(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_0

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TO;)Z"
        }
    .end annotation

    if-nez p2, :cond_1

    const-string v0, "FastJsonResponse"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FastJsonResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output field ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has a null value,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but expected a primitive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d([B)Ljava/io/InputStream;
    .locals 2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->isGzipByteBuffer([B)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addConcreteType(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p2, "value":Lcom/google/android/gms/common/server/response/FastJsonResponse;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concrete type not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConcreteTypeArray(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concrete type array not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "value":Lcom/google/android/gms/common/server/response/FastJsonResponse;, "TT;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteType(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    return-void
.end method

.method public getConcreteTypeArrays()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConcreteTypes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getFieldMappings()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;"
        }
    .end annotation
.end method

.method protected getFieldValue(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 6
    .param p1, "field"    # Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getConcreteType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getValueObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Concrete field shouldn\'t be value object: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->isTypeOutArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getConcreteTypeArrays()Ljava/util/HashMap;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getConcreteTypes()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getValueObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method

.method protected getOriginalValue(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "convertedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<TI;TO;>;",
            "Ljava/lang/Object;",
            ")TI;"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<TI;TO;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "convertedValue":Ljava/lang/Object;
    :cond_0
    return-object p2
.end method

.method public getPostProcessor()Lcom/google/android/gms/common/server/response/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/server/response/e",
            "<+",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseBody()[B
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->XG:Z

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->J(Z)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->XF:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->XF:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method public getResponseCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->XG:Z

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->J(Z)V

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->XE:I

    return v0
.end method

.method protected abstract getValueObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected isConcreteTypeArrayFieldSet(Ljava/lang/String;)Z
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concrete type arrays not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isConcreteTypeFieldSet(Ljava/lang/String;)Z
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concrete types not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isFieldSet(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2
    .param p1, "field"    # Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .prologue
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getTypeOut()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->isTypeOutArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->isConcreteTypeArrayFieldSet(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->isConcreteTypeFieldSet(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->isPrimitiveFieldSet(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract isPrimitiveFieldSet(Ljava/lang/String;)Z
.end method

.method public parseNetworkResponse(I[B)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    .prologue
    iput p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->XE:I

    iput-object p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->XF:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse;->XG:Z

    invoke-static {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->d([B)Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/FastParser;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/server/response/FastParser;->parse(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final setBigDecimal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigDecimal;)V
    .locals 1
    .param p2, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/math/BigDecimal;",
            "TO;>;",
            "Ljava/math/BigDecimal;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/math/BigDecimal;TO;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBigDecimalInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigDecimal;)V

    goto :goto_0
.end method

.method protected setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/math/BigDecimal;

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BigDecimal not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBigDecimalInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V

    return-void
.end method

.method public final setBigDecimals(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigDecimal;",
            ">;TO;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/util/ArrayList<Ljava/math/BigDecimal;>;TO;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigDecimal;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBigDecimalsInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected setBigDecimals(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigDecimal;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BigDecimal list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBigDecimalsInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigDecimal;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBigDecimals(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setBigInteger(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigInteger;)V
    .locals 1
    .param p2, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/math/BigInteger;",
            "TO;>;",
            "Ljava/math/BigInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/math/BigInteger;TO;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBigIntegerInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method protected setBigInteger(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/math/BigInteger;

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BigInteger not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBigIntegerInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBigInteger(Ljava/lang/String;Ljava/math/BigInteger;)V

    return-void
.end method

.method public final setBigIntegers(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigInteger;",
            ">;TO;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/util/ArrayList<Ljava/math/BigInteger;>;TO;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBigIntegersInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected setBigIntegers(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BigInteger list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBigIntegersInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBigIntegers(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setBoolean(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Z)V
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/lang/Boolean;",
            "TO;>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/lang/Boolean;TO;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBooleanInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Boolean not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBooleanInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setBooleans(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;TO;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/util/ArrayList<Ljava/lang/Boolean;>;TO;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBooleansInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected setBooleans(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Boolean list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBooleansInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBooleans(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setDecodedBytes(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V
    .locals 1
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<[BTO;>;[B)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<[BTO;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setDecodedBytesInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method protected setDecodedBytes(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "byte[] not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setDecodedBytesInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;[B)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setDecodedBytes(Ljava/lang/String;[B)V

    return-void
.end method

.method public final setDouble(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;D)V
    .locals 2
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/lang/Double;",
            "TO;>;D)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/lang/Double;TO;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setDoubleInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method protected setDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Double not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setDoubleInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;D)V
    .locals 1
    .param p2, "outputField"    # Ljava/lang/String;
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public final setDoubles(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;TO;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/util/ArrayList<Ljava/lang/Double;>;TO;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setDoublesInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected setDoubles(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Double list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setDoublesInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setDoubles(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setFloat(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;F)V
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/lang/Float;",
            "TO;>;F)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/lang/Float;TO;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setFloatInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;F)V

    goto :goto_0
.end method

.method protected setFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Float not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setFloatInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;F)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .param p3, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public final setFloats(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;TO;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/util/ArrayList<Ljava/lang/Float;>;TO;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setFloatsInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected setFloats(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Float list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setFloatsInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setFloats(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setInteger(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;I)V
    .locals 1
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/lang/Integer;",
            "TO;>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/lang/Integer;TO;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setIntegerInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected setInteger(Ljava/lang/String;I)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Integer not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setIntegerInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public final setIntegers(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;TO;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/util/ArrayList<Ljava/lang/Integer;>;TO;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setIntegersInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected setIntegers(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Integer list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setIntegersInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setIntegers(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setLong(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;J)V
    .locals 2
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/lang/Long;",
            "TO;>;J)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/lang/Long;TO;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setLongInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Long not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setLongInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;J)V
    .locals 1
    .param p2, "outputField"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final setLongs(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;TO;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/util/ArrayList<Ljava/lang/Long;>;TO;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setLongsInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected setLongs(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Long list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setLongsInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setLongs(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setString(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/lang/String;",
            "TO;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/lang/String;TO;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setStringInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "String not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setStringInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setStringMap(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TO;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;TO;>;"
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setStringMapInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected setStringMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "String map not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setStringMapInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setStringMap(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final setStrings(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;TO;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<Ljava/util/ArrayList<Ljava/lang/String;>;TO;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getOutputFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setStringsInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected setStrings(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "String list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setStringsInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "outputField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "field":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setStrings(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->isFieldSet(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldValue(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getOriginalValue(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "{"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    const-string v0, "null"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->getTypeOut()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->isTypeInArray()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v4, v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, v2

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/common/util/b;->e([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/android/gms/common/util/b;->f([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    check-cast v2, Ljava/util/HashMap;

    invoke-static {v4, v2}, Lcom/google/android/gms/common/util/j;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v4, v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v0, "{}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
