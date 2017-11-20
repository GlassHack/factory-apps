.class final Lcom/google/android/location/os/real/z;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/x;

.field private final b:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/x;)V
    .locals 2

    .prologue
    .line 873
    iput-object p1, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 875
    iget-object v0, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/z;->b:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/x;B)V
    .locals 0

    .prologue
    .line 873
    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/z;-><init>(Lcom/google/android/location/os/real/x;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v5, 0x19

    const/16 v4, 0x13

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 883
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 884
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 885
    iget-object v0, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    invoke-virtual {v0, v5, v1, v1}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 887
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto :goto_0

    .line 888
    :cond_2
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 892
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto :goto_0

    .line 893
    :cond_3
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 897
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto :goto_0

    .line 898
    :cond_4
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 902
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto :goto_0

    .line 903
    :cond_5
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 907
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto :goto_0

    .line 908
    :cond_6
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 912
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto :goto_0

    .line 913
    :cond_7
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 917
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto :goto_0

    .line 918
    :cond_8
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->g:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 922
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 923
    :cond_9
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->h:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 927
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 928
    :cond_a
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 932
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 933
    :cond_b
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->j:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 937
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 938
    :cond_c
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->k:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 942
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 943
    :cond_d
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->l:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 947
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 948
    :cond_e
    iget-object v3, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->m:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 952
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 953
    :cond_f
    const-string v3, "com.google.android.wearable.app.intent.action.DEEP_AMBIENT_MODE_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 954
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    invoke-virtual {v2, v4, v1, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 955
    :cond_10
    const-string v3, "com.google.android.wearable.app.intent.action.DEEP_AMBIENT_MODE_ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 956
    iget-object v1, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    invoke-virtual {v1, v4, v0, v0}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 957
    :cond_11
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 958
    iget-object v0, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, p0, Lcom/google/android/location/os/real/z;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    if-eqz v2, :cond_0

    invoke-static {v4, v5, v2}, Lcom/google/android/location/os/real/bb;->a(JLjava/util/List;)[Lcom/google/android/location/f/bh;

    move-result-object v2

    const/16 v3, 0x15

    new-instance v4, Lcom/google/android/location/os/real/ag;

    invoke-direct {v4, v2, v1}, Lcom/google/android/location/os/real/ag;-><init>([Lcom/google/android/location/f/bh;Z)V

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    goto/16 :goto_0

    .line 959
    :cond_12
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 960
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 963
    const/4 v3, 0x3

    if-eq v2, v3, :cond_13

    if-ne v2, v0, :cond_0

    .line 968
    :cond_13
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 969
    if-nez v2, :cond_14

    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/os/real/z;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/location/os/real/be;->a(Landroid/net/wifi/WifiManager;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    move v3, v0

    .line 971
    :goto_1
    if-eqz v2, :cond_16

    const/4 v2, 0x2

    :goto_2
    if-eqz v3, :cond_17

    :goto_3
    or-int/2addr v0, v2

    .line 974
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v3, 0x16

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    :cond_15
    move v3, v1

    .line 969
    goto :goto_1

    :cond_16
    move v2, v1

    .line 971
    goto :goto_2

    :cond_17
    move v0, v1

    goto :goto_3

    .line 976
    :cond_18
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 977
    iget-object v0, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    goto/16 :goto_0

    .line 978
    :cond_19
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 979
    iget-object v2, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    invoke-static {p1}, Lcom/google/android/location/os/real/x;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :goto_4
    const/16 v3, 0x1b

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    :cond_1a
    move v0, v1

    goto :goto_4

    .line 980
    :cond_1b
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 981
    iget-object v0, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 982
    :cond_1c
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 983
    iget-object v0, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 985
    :cond_1d
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/real/be;->a(Ljava/lang/String;)I

    move-result v0

    .line 987
    packed-switch v0, :pswitch_data_0

    .line 995
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkLocationCallbackRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected action "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 989
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 992
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/os/real/z;->a:Lcom/google/android/location/os/real/x;

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    goto/16 :goto_0

    .line 987
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
