.class public final enum Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

.field public static final enum b:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

.field public static final enum c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

.field private static final synthetic d:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->d:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    return-object v0
.end method

.method public static values()[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->d:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    invoke-virtual {v0}, [Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    return-object v0
.end method
