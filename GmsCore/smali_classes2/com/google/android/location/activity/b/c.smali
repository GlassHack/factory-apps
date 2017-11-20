.class public final Lcom/google/android/location/activity/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/activity/b/c;->a:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown activity type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :pswitch_0
    const-string v0, "in_vehicle"

    .line 48
    :goto_0
    return-object v0

    .line 34
    :pswitch_1
    const-string v0, "on_bicycle"

    goto :goto_0

    .line 36
    :pswitch_2
    const-string v0, "on_foot"

    goto :goto_0

    .line 38
    :pswitch_3
    const-string v0, "still"

    goto :goto_0

    .line 40
    :pswitch_4
    const-string v0, "unknown"

    goto :goto_0

    .line 42
    :pswitch_5
    const-string v0, "tilting"

    goto :goto_0

    .line 44
    :pswitch_6
    const-string v0, "exiting_vehicle"

    goto :goto_0

    .line 46
    :pswitch_7
    const-string v0, "walking"

    goto :goto_0

    .line 48
    :pswitch_8
    const-string v0, "running"

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
