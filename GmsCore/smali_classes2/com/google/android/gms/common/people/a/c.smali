.class public final Lcom/google/android/gms/common/people/a/c;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1095
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1099
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/c;->b:Ljava/util/List;

    .line 1132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/c;->c:Ljava/util/List;

    .line 1165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/c;->a:Ljava/util/List;

    .line 1222
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/people/a/c;->d:I

    .line 1095
    return-void
.end method

.method public static a([B)Lcom/google/android/gms/common/people/a/c;
    .locals 2

    .prologue
    .line 1290
    new-instance v0, Lcom/google/android/gms/common/people/a/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/a/c;-><init>()V

    array-length v1, p0

    invoke-super {v0, p0, v1}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1225
    iget v0, p0, Lcom/google/android/gms/common/people/a/c;->d:I

    if-gez v0, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/a/c;->b()I

    .line 1229
    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/people/a/c;->d:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/common/people/a/d;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/d;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 1092
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    new-instance v0, Lcom/google/android/gms/common/people/a/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/a/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/people/a/c;->b:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/people/a/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/common/people/a/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/a/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/people/a/c;->c:Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/people/a/c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/android/gms/common/people/a/g;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/a/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/people/a/c;->a:Ljava/util/List;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/people/a/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/d;

    .line 1212
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/b;

    .line 1215
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_1

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/g;

    .line 1218
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_2

    .line 1220
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 1234
    const/4 v0, 0x0

    .line 1235
    iget-object v1, p0, Lcom/google/android/gms/common/people/a/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/d;

    .line 1236
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1238
    goto :goto_0

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/b;

    .line 1240
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1242
    goto :goto_1

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/g;

    .line 1244
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1246
    goto :goto_2

    .line 1247
    :cond_2
    iput v1, p0, Lcom/google/android/gms/common/people/a/c;->d:I

    .line 1248
    return v1
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
